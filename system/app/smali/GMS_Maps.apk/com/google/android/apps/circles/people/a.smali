.class Lcom/google/android/apps/circles/people/a;
.super Lcom/google/android/apps/circles/people/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/circles/people/MultiLineLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/circles/people/c;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 32
    return-void
.end method
