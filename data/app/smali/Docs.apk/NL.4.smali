.class public LNL;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements LFN;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

.field a:Z


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LNL;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, LNL;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;LNC;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, LNL;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, LNL;->a:Z

    .line 119
    return-void
.end method

.method public a(LFM;)V
    .registers 4
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleEnd()"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public a(LFM;)Z
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleBegin()"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public b(LFM;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 134
    iget-boolean v0, p0, LNL;->a:Z

    if-eqz v0, :cond_6

    .line 146
    :cond_5
    :goto_5
    return v4

    .line 138
    :cond_6
    invoke-virtual {p1}, LFM;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    .line 139
    iget-object v0, p0, LNL;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNJ;

    invoke-interface {v0, v4}, LNJ;->b(Z)V

    .line 140
    iput-boolean v4, p0, LNL;->a:Z

    goto :goto_5

    .line 141
    :cond_1e
    invoke-virtual {p1}, LFM;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 142
    iget-object v0, p0, LNL;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNJ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LNJ;->b(Z)V

    .line 143
    iput-boolean v4, p0, LNL;->a:Z

    goto :goto_5
.end method
