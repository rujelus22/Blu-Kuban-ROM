.class public LaaT;
.super LcI;
.source "LinearLayoutListView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/LinearLayoutListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V
    .registers 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, LaaT;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, LaaT;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    iget-object v0, p0, LaaT;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    .line 354
    :cond_d
    return-void
.end method
