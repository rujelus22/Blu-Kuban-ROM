.class Lcom/infraware/filemanager/file/FileInputFilter$2;
.super Ljava/lang/Object;
.source "FileInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileInputFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileInputFilter;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileInputFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileInputFilter$2;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 67
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

    .line 71
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter$2;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    #getter for: Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileInputFilter;->access$0(Lcom/infraware/filemanager/file/FileInputFilter;)I

    move-result v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 72
    .local v0, nRest:I
    if-gez v0, :cond_13

    .line 80
    :cond_12
    :goto_12
    return-object v1

    .line 75
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_12

    .line 77
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileInputFilter$2;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    const/16 v2, -0xa

    #calls: Lcom/infraware/filemanager/file/FileInputFilter;->onToastMessage(I)V
    invoke-static {v1, v2}, Lcom/infraware/filemanager/file/FileInputFilter;->access$2(Lcom/infraware/filemanager/file/FileInputFilter;I)V

    .line 78
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_12
.end method
