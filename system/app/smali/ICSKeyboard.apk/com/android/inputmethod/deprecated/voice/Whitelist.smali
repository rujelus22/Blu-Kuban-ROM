.class public Lcom/android/inputmethod/deprecated/voice/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# instance fields
.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, conditions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    .line 36
    return-void
.end method

.method private matches(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "condition"
    .parameter "target"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 66
    const/4 v1, 0x1

    :goto_f
    return v1

    .line 61
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 63
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .registers 4
    .parameter "app"

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public matches(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 53
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 48
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 49
    .local v0, condition:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/inputmethod/deprecated/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/deprecated/voice/Whitelist;->matches(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    const/4 v1, 0x1

    goto :goto_d
.end method
