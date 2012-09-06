.class public Lcom/google/googlenav/ui/view/android/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/googlenav/ui/view/android/aj;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    .line 39
    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/android/aj;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/googlenav/ui/view/android/aj;->b:Lcom/google/googlenav/ui/view/android/aj;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/google/googlenav/ui/view/android/aj;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aj;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/aj;->b:Lcom/google/googlenav/ui/view/android/aj;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/ju;)Lcom/google/googlenav/ui/wizard/ft;
    .registers 5
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/wizard/ft;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public b(Lcom/google/googlenav/ui/wizard/ju;)Lcom/google/googlenav/ui/wizard/js;
    .registers 4
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/google/googlenav/ui/wizard/js;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/js;-><init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V

    return-object v0
.end method
