.class Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    .line 60
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
    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 66
    .local v0, checked:Ljava/lang/String;
    sub-int v2, p3, p2

    if-lez v2, :cond_49

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, nIdx:I
    :goto_a
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_25

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 78
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    #getter for: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$1(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)I

    move-result v3

    #calls: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->onToastMessage(I)V
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$2(Lcom/infraware/polarisoffice/sheet/InputValueFilter;I)V

    move-object v2, v0

    .line 82
    .end local v1           #nIdx:I
    :goto_24
    return-object v2

    .line 70
    .restart local v1       #nIdx:I
    :cond_25
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;->this$0:Lcom/infraware/polarisoffice/sheet/InputValueFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    #calls: Lcom/infraware/polarisoffice/sheet/InputValueFilter;->isValidChar(C)Z
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->access$0(Lcom/infraware/polarisoffice/sheet/InputValueFilter;C)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 82
    .end local v1           #nIdx:I
    :cond_49
    const/4 v2, 0x0

    goto :goto_24
.end method
