<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Писатели</h1>
<ul>
<?php foreach ($writers as $writer): ?>
    <li>
        <?= Html::encode("{$writer->name} {$writer->surname}") ?>:
        <?= $writer->book_id ?>
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>
// Html хелпер