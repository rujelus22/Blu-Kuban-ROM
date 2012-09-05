.class Lcom/infraware/polarisoffice/common/EditInputFilter$1;
.super Ljava/lang/Object;
.source "EditInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/EditInputFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/EditInputFilter;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/EditInputFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/EditInputFilter$1;->this$0:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/EditInputFilter$1;->this$0:Lcom/infraware/polarisoffice/common/EditInputFilter;

    #getter for: Lcom/infraware/polarisoffice/common/EditInputFilter;->m_nMaxLength:I
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;->access$0(Lcom/infraware/polarisoffice/common/EditInputFilter;)I

    move-result v4

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    sub-int v6, p6, p5

    sub-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 35
    .local v2, nRest:I
    if-gez v2, :cond_14

    move-object v0, v3

    .line 48
    :cond_13
    :goto_13
    return-object v0

    .line 38
    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 39
    .local v0, checked:Ljava/lang/String;
    sub-int v4, p3, p2

    if-lez v4, :cond_22

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, nIdx:I
    :goto_1e
    sub-int v4, p3, p2

    if-lt v1, v4, :cond_24

    .end local v1           #nIdx:I
    :cond_22
    move-object v0, v3

    .line 48
    goto :goto_13

    .line 43
    .restart local v1       #nIdx:I
    :cond_24
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/EditInputFilter$1;->this$0:Lcom/infraware/polarisoffice/common/EditInputFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    #calls: Lcom/infraware/polarisoffice/common/EditInputFilter;->isCarriageReturn(C)Z
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/common/EditInputFilter;->access$1(Lcom/infraware/polarisoffice/common/EditInputFilter;C)Z

    move-result v4

    if-nez v4, :cond_13

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method
