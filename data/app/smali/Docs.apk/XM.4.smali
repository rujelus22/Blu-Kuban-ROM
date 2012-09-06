.class public LXM;
.super Ljava/lang/Object;
.source "FeedbackReport.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LXM;->a:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, LXM;->a:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, LXM;->a:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(LdX;)LarF;
    .registers 8
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, LXM;->a()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 63
    new-instance v0, LarF;

    iget-object v1, p0, LXM;->a:Landroid/app/Activity;

    iget-object v2, p0, LXM;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "AndroidRuntime:V *:S"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LXM;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, LdX;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LarF;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 77
    :goto_2f
    iget-object v0, p0, LXM;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_7b

    .line 78
    iget-object v0, p0, LXM;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    const-string v4, "text/plain"

    iget-object v1, p0, LXM;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v0, v4, v1}, LarF;->a(Ljava/lang/String;Ljava/lang/String;[B)LarF;

    goto :goto_3d

    .line 72
    :cond_5b
    new-instance v0, LarF;

    iget-object v1, p0, LXM;->a:Landroid/app/Activity;

    const-string v2, "AndroidRuntime:V *:S"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LXM;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, LdX;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LarF;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_2f

    .line 84
    :cond_7b
    return-object v2
.end method

.method public a()V
    .registers 4

    .prologue
    .line 103
    new-instance v0, Larm;

    invoke-direct {v0}, Larm;-><init>()V

    .line 104
    invoke-static {}, LZG;->a()LdX;

    move-result-object v1

    invoke-virtual {p0, v1}, LXM;->a(LdX;)LarF;

    move-result-object v1

    .line 107
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Larm;->a(LarF;I)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LXM;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LXM;->a:Ljava/util/HashMap;

    .line 56
    :cond_b
    iget-object v0, p0, LXM;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
