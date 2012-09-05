.class Lcom/infraware/common/account/EditAccount$5;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/EditAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/EditAccount;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/EditAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$5;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    rsub-int/lit8 v1, v3, 0x32

    .line 206
    .local v1, nRest:I
    if-gez v1, :cond_d

    .line 214
    :cond_c
    :goto_c
    return-object v2

    .line 209
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v1, :cond_c

    .line 210
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$5;->this$0:Lcom/infraware/common/account/EditAccount;

    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$5;->this$0:Lcom/infraware/common/account/EditAccount;

    #calls: Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/infraware/common/account/EditAccount;->access$13(Lcom/infraware/common/account/EditAccount;Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_c
.end method
