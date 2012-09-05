.class Lcom/infraware/common/account/MailInputFilter$1;
.super Ljava/lang/Object;
.source "MailInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/MailInputFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/MailInputFilter;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/MailInputFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/MailInputFilter$1;->this$0:Lcom/infraware/common/account/MailInputFilter;

    .line 25
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

    .line 28
    iget-object v4, p0, Lcom/infraware/common/account/MailInputFilter$1;->this$0:Lcom/infraware/common/account/MailInputFilter;

    #getter for: Lcom/infraware/common/account/MailInputFilter;->m_MaxLength:I
    invoke-static {v4}, Lcom/infraware/common/account/MailInputFilter;->access$0(Lcom/infraware/common/account/MailInputFilter;)I

    move-result v4

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    sub-int v6, p6, p5

    sub-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 29
    .local v2, nRest:I
    if-gez v2, :cond_14

    move-object v0, v3

    .line 54
    :goto_13
    return-object v0

    .line 32
    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 33
    .local v0, checked:Ljava/lang/String;
    sub-int v4, p3, p2

    if-lez v4, :cond_68

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, nIdx:I
    :goto_1e
    sub-int v4, p3, p2

    if-lt v1, v4, :cond_35

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 50
    iget-object v3, p0, Lcom/infraware/common/account/MailInputFilter$1;->this$0:Lcom/infraware/common/account/MailInputFilter;

    const v4, 0x7f080075

    #calls: Lcom/infraware/common/account/MailInputFilter;->onToastMessage(I)V
    invoke-static {v3, v4}, Lcom/infraware/common/account/MailInputFilter;->access$2(Lcom/infraware/common/account/MailInputFilter;I)V

    goto :goto_13

    .line 37
    :cond_35
    iget-object v4, p0, Lcom/infraware/common/account/MailInputFilter$1;->this$0:Lcom/infraware/common/account/MailInputFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    #calls: Lcom/infraware/common/account/MailInputFilter;->isValidChar(C)Z
    invoke-static {v4, v5}, Lcom/infraware/common/account/MailInputFilter;->access$1(Lcom/infraware/common/account/MailInputFilter;C)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_50

    .line 41
    iget-object v3, p0, Lcom/infraware/common/account/MailInputFilter$1;->this$0:Lcom/infraware/common/account/MailInputFilter;

    const v4, 0x7f080072

    #calls: Lcom/infraware/common/account/MailInputFilter;->onToastMessage(I)V
    invoke-static {v3, v4}, Lcom/infraware/common/account/MailInputFilter;->access$2(Lcom/infraware/common/account/MailInputFilter;I)V

    goto :goto_13

    .line 44
    :cond_50
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

    .line 46
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1           #nIdx:I
    :cond_68
    move-object v0, v3

    .line 54
    goto :goto_13
.end method
