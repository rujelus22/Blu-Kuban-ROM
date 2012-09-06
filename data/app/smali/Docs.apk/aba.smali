.class final Laba;
.super Ljava/lang/Object;
.source "LinearLayoutListView.java"

# interfaces
.implements Labb;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, LaaW;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p2}, LaaW;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)V

    return-object v0
.end method
