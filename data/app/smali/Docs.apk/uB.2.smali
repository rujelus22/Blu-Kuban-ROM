.class LuB;
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
    .line 220
    iput-object p1, p0, LuB;->a:Luy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, LuB;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()I

    move-result v0

    .line 224
    :goto_a
    if-lez v0, :cond_18

    .line 225
    iget-object v1, p0, LuB;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->a()V

    .line 226
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 228
    :cond_18
    iget-object v0, p0, LuB;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)LuF;

    move-result-object v0

    invoke-interface {v0}, LuF;->a()V

    .line 229
    return-void
.end method
