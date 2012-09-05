.class Lcom/android/task/TaskEditActivity$TaskInputFilter;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskInputFilter"
.end annotation


# instance fields
.field private mMax:I

.field private mToast:Landroid/widget/Toast;

.field private prevkeep:I

.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskEditActivity;I)V
    .registers 4
    .parameter
    .parameter "max"

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->prevkeep:I

    .line 1430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mToast:Landroid/widget/Toast;

    .line 1433
    iput p2, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mMax:I

    .line 1434
    return-void
.end method

.method private ShowLimitMessage(I)V
    .registers 7
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 1457
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_27

    .line 1458
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-virtual {v1}, Lcom/android/task/TaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, limitStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mToast:Landroid/widget/Toast;

    .line 1461
    .end local v0           #limitStr:Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1462
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 11
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1437
    iget v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1439
    .local v0, keep:I
    const-string v1, "TaskEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dtstart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dtend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->prevkeep:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_54

    iget v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->prevkeep:I

    if-ltz v1, :cond_5b

    :cond_54
    if-nez v0, :cond_5b

    .line 1443
    iget v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/task/TaskEditActivity$TaskInputFilter;->ShowLimitMessage(I)V

    .line 1445
    :cond_5b
    iput v0, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->prevkeep:I

    .line 1446
    if-gtz v0, :cond_62

    .line 1447
    const-string v1, ""

    .line 1452
    :goto_61
    return-object v1

    .line 1448
    :cond_62
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_68

    .line 1449
    const/4 v1, 0x0

    goto :goto_61

    .line 1451
    :cond_68
    iget v1, p0, Lcom/android/task/TaskEditActivity$TaskInputFilter;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/task/TaskEditActivity$TaskInputFilter;->ShowLimitMessage(I)V

    .line 1452
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_61
.end method
