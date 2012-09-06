.class Lcom/google/googlenav/ui/wizard/gY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gT;

.field private b:Lcom/google/googlenav/ui/wizard/gZ;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gT;)V
    .registers 4
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/google/googlenav/ui/wizard/gZ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/gZ;-><init>(Lcom/google/googlenav/ui/wizard/gY;Lcom/google/googlenav/ui/wizard/gU;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/gZ;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gT;Lcom/google/googlenav/ui/wizard/gU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gY;-><init>(Lcom/google/googlenav/ui/wizard/gT;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    if-nez v0, :cond_9

    .line 236
    :goto_8
    return-void

    .line 234
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->c:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gB;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/gZ;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_8
.end method
