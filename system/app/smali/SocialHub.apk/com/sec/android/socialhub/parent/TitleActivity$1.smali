.class Lcom/sec/android/socialhub/parent/TitleActivity$1;
.super Ljava/lang/Object;
.source "TitleActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/TitleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAfterEnd:I

.field private mBefore:Ljava/lang/String;

.field private mBeforeEnd:I

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/TitleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/TitleActivity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 350
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBefore:Ljava/lang/String;

    .line 353
    iput v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBeforeEnd:I

    .line 354
    iput v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mAfterEnd:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 385
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBefore:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBeforeEnd:I

    .line 380
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .parameter "text"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v6, 0x1

    .line 358
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBefore:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/parent/TitleActivity;->onHandleText(Ljava/lang/String;Ljava/lang/CharSequence;III)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mAfterEnd:I

    .line 362
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity;->access$002(Lcom/sec/android/socialhub/parent/TitleActivity;Z)Z

    .line 364
    iget v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBeforeEnd:I

    iget v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mAfterEnd:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_2c

    .line 366
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    #setter for: Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z
    invoke-static {v0, v6}, Lcom/sec/android/socialhub/parent/TitleActivity;->access$002(Lcom/sec/android/socialhub/parent/TitleActivity;Z)Z

    .line 369
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    #getter for: Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/TitleActivity;->access$000(Lcom/sec/android/socialhub/parent/TitleActivity;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 371
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iget v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mBeforeEnd:I

    iget v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity$1;->mAfterEnd:I

    invoke-virtual {v0, p2, p4, v1, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->onSelectionChanged(IIII)V

    .line 373
    :cond_3d
    return-void
.end method
