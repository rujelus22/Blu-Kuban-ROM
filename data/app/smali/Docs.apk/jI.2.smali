.class LjI;
.super LcI;
.source "TabletDocListActivity.java"


# instance fields
.field final synthetic a:LjH;


# direct methods
.method constructor <init>(LjH;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, LjI;->a:LjH;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, LjI;->a:LjH;

    iget-object v0, v0, LjH;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    .line 354
    return-void
.end method
