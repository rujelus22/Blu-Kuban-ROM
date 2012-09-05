.class Lcom/infraware/filemanager/file/FileInputFilter$1;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    .line 31
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

    .line 35
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    #getter for: Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I
    invoke-static {v4}, Lcom/infraware/filemanager/file/FileInputFilter;->access$0(Lcom/infraware/filemanager/file/FileInputFilter;)I

    move-result v4

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    sub-int v6, p6, p5

    sub-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 36
    .local v2, nRest:I
    if-gez v2, :cond_14

    move-object v0, v3

    .line 63
    :cond_13
    :goto_13
    return-object v0

    .line 39
    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 40
    .local v0, checked:Ljava/lang/String;
    sub-int v4, p3, p2

    if-lez v4, :cond_72

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, nIdx:I
    :goto_1e
    sub-int v4, p3, p2

    if-lt v1, v4, :cond_34

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 59
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    const/16 v4, -0x9

    #calls: Lcom/infraware/filemanager/file/FileInputFilter;->onToastMessage(I)V
    invoke-static {v3, v4}, Lcom/infraware/filemanager/file/FileInputFilter;->access$2(Lcom/infraware/filemanager/file/FileInputFilter;I)V

    goto :goto_13

    .line 44
    :cond_34
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    #calls: Lcom/infraware/filemanager/file/FileInputFilter;->isValidChar(C)Z
    invoke-static {v4, v5}, Lcom/infraware/filemanager/file/FileInputFilter;->access$1(Lcom/infraware/filemanager/file/FileInputFilter;C)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_4e

    .line 48
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    const/16 v4, -0xa

    #calls: Lcom/infraware/filemanager/file/FileInputFilter;->onToastMessage(I)V
    invoke-static {v3, v4}, Lcom/infraware/filemanager/file/FileInputFilter;->access$2(Lcom/infraware/filemanager/file/FileInputFilter;I)V

    goto :goto_13

    .line 51
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_63
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileInputFilter$1;->this$0:Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    #calls: Lcom/infraware/filemanager/file/FileInputFilter;->isCarriageReturn(C)Z
    invoke-static {v4, v5}, Lcom/infraware/filemanager/file/FileInputFilter;->access$3(Lcom/infraware/filemanager/file/FileInputFilter;C)Z

    move-result v4

    if-nez v4, :cond_13

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1           #nIdx:I
    :cond_72
    move-object v0, v3

    .line 63
    goto :goto_13
.end method
