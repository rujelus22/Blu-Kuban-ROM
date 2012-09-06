.class LuC;
.super Ljava/lang/Object;
.source "DiscussionFragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luy;


# direct methods
.method constructor <init>(Luy;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, LuC;->a:Luy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 245
    iget-object v0, p0, LuC;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()I

    move-result v0

    .line 246
    if-lez v0, :cond_1b

    .line 247
    iget-object v0, p0, LuC;->a:Luy;

    invoke-virtual {v0}, Luy;->b()V

    .line 248
    iget-object v0, p0, LuC;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)LuE;

    move-result-object v0

    invoke-interface {v0}, LuE;->b()V

    .line 257
    :goto_1a
    return-void

    .line 250
    :cond_1b
    iget-object v0, p0, LuC;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    iget-object v1, p0, LuC;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)I

    move-result v1

    iget-object v2, p0, LuC;->a:Luy;

    invoke-static {v2}, Luy;->a(Luy;)Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LH;->b(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH;->a(Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 253
    iget-object v0, p0, LuC;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    move-result-object v0

    iget-object v1, p0, LuC;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)Lmw;

    move-result-object v1

    iget-object v2, p0, LuC;->a:Luy;

    invoke-static {v2}, Luy;->a(Luy;)LzF;

    move-result-object v2

    iget-object v3, p0, LuC;->a:Luy;

    invoke-static {v3}, Luy;->a(Luy;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LuC;->a:Luy;

    invoke-static {v4}, Luy;->b(Luy;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LuC;->a:Luy;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lmw;LzF;Ljava/lang/String;Ljava/lang/String;LuI;)V

    .line 255
    iget-object v0, p0, LuC;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)LuE;

    move-result-object v0

    invoke-interface {v0}, LuE;->a()V

    goto :goto_1a
.end method
