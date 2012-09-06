.class final LaaZ;
.super Ljava/lang/Object;
.source "LinearLayoutListView.java"

# interfaces
.implements Labb;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, LaaV;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p2}, LaaV;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)V

    return-object v0
.end method
