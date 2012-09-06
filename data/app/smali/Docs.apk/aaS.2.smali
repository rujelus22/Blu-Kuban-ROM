.class public LaaS;
.super LcI;
.source "LinearLayoutListView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/LinearLayoutListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, LaaS;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, LaaS;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 323
    iget-object v0, p0, LaaS;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    .line 325
    :cond_d
    return-void
.end method
