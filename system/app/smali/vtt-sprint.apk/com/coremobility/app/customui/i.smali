.class final Lcom/coremobility/app/customui/i;
.super Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/coremobility/app/customui/CM_RecipientEditor;

.field private final c:Landroid/widget/MultiAutoCompleteTextView;

.field private d:Ljava/util/Vector;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/customui/CM_RecipientEditor;Landroid/widget/MultiAutoCompleteTextView;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/app/customui/i;->b:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-direct {p0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    iput-object p2, p0, Lcom/coremobility/app/customui/i;->c:Landroid/widget/MultiAutoCompleteTextView;

    iput-boolean v0, p0, Lcom/coremobility/app/customui/i;->a:Z

    invoke-static {p1, v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a(Lcom/coremobility/app/customui/CM_RecipientEditor;Z)Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremobility/app/customui/i;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    if-nez p1, :cond_14

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->b:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-static {v0, v2}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a(Lcom/coremobility/app/customui/CM_RecipientEditor;Z)Z

    const-string v0, " ()+"

    invoke-static {p1, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v7, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-eqz v0, :cond_13

    move v1, v2

    :goto_32
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v5

    move v3, v2

    :goto_41
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_104

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/hr;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6b

    const/4 v0, 0x0

    move-object v1, v0

    move v0, v6

    :goto_62
    if-eqz v1, :cond_69

    iget-object v3, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_69
    move v1, v0

    goto :goto_32

    :cond_6b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    :cond_6f
    move-object v3, v4

    :goto_70
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->d()I

    move-result v5

    if-ne v5, v6, :cond_ba

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9c

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    :cond_9c
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_102

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b2

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b2
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b6
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_70

    :cond_ba
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->d()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_dc

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d3

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    :cond_d3
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    goto :goto_a4

    :cond_dc
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->d()I

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->b:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-static {v0, v6}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a(Lcom/coremobility/app/customui/CM_RecipientEditor;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    :cond_f9
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    goto :goto_a4

    :cond_102
    move-object v0, v3

    goto :goto_b6

    :cond_104
    move v0, v1

    move-object v1, v5

    goto/16 :goto_62
.end method


# virtual methods
.method public final a()Ljava/util/Vector;
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/customui/i;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->c:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/customui/i;->a(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/customui/i;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->c:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/customui/i;->a(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/customui/i;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/customui/i;->c:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/customui/i;->a(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/coremobility/app/customui/i;->f:Ljava/lang/String;

    return-object v0
.end method
