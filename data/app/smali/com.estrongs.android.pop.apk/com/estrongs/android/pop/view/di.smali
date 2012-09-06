.class Lcom/estrongs/android/pop/view/di;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/di;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_61

    iget-object v0, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/estrongs/android/pop/view/ff;->a(ILjava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v0

    move-object v6, v0

    :goto_31
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const-string v3, ""

    const v4, 0x10010

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "playlist"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isadd"

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/estrongs/android/pop/view/di;->b:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/util/Map;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    return-void

    :cond_61
    iget-object v0, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/estrongs/android/pop/view/ff;->a(ILjava/lang/String;Z)Ljava/util/Vector;

    move-result-object v0

    move-object v6, v0

    goto :goto_31
.end method
