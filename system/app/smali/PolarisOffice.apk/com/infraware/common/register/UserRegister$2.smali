.class Lcom/infraware/common/register/UserRegister$2;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/UserRegister;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$2;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const/4 v1, 0x0

    .line 337
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    rsub-int/lit8 v0, v2, 0x1e

    .line 338
    .local v0, nRest:I
    if-gez v0, :cond_d

    .line 345
    :cond_c
    :goto_c
    return-object v1

    .line 341
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_c

    .line 342
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister$2;->this$0:Lcom/infraware/common/register/UserRegister;

    const v2, 0x7f080070

    #calls: Lcom/infraware/common/register/UserRegister;->onToastMessage(I)V
    invoke-static {v1, v2}, Lcom/infraware/common/register/UserRegister;->access$8(Lcom/infraware/common/register/UserRegister;I)V

    .line 343
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_c
.end method
