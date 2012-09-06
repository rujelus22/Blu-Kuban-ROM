.class public final Lcom/darekxan/extweaks/app/h;
.super Ljava/lang/Object;
.source "ExTweaksProfileManager.java"


# instance fields
.field a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Lcom/darekxan/extweaks/app/h;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    .line 14
    invoke-direct {p0}, Lcom/darekxan/extweaks/app/h;->a()V

    .line 15
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/app/h;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    invoke-virtual {v2}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uci.sh list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    .line 36
    iget-object v1, p0, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v0, p0, Lcom/darekxan/extweaks/app/h;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->invalidateOptionsMenu()V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/darekxan/extweaks/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19
    iget-object v0, p0, Lcom/darekxan/extweaks/app/h;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    invoke-virtual {v2}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uci.sh select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    :cond_2e
    invoke-direct {p0}, Lcom/darekxan/extweaks/app/h;->a()V

    .line 23
    return-void
.end method
