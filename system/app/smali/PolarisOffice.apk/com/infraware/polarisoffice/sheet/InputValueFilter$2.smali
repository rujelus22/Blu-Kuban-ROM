.class Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;
.super Ljava/lang/Object;
.source "InputValueFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/InputValueFilter;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    .line 86
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
    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    #getter for: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$3(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)I

    move-result v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 90
    .local v0, nRest:I
    if-gez v0, :cond_13

    .line 98
    :cond_12
    :goto_12
    return-object v1

    .line 93
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_12

    .line 95
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    #getter for: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$1(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)I

    move-result v2

    #calls: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->onToastMessage(I)V
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$2(Lcom/infraware/polarisoffice/sheet/InputValueFilter;I)V

    .line 96
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_12
.end method
