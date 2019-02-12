<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Writer;

class WriterController extends Controller
{
    public function actionIndex()
    {
        $query = Writer::find(); // извлекает из таблицы writer

        $pagination = new Pagination([
            'defaultPageSize' => 5,
            'totalCount' => $query->count(),
        ]);

        $writers = $query->orderBy('name')  // множественное число
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('index', [
            'writers' => $writers, // множественное число
            'pagination' => $pagination, 
        ]);
    }
}