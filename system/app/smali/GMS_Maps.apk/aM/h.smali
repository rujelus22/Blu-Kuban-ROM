.class public abstract LaM/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/w;


# static fields
.field protected static a:Landroid/view/ViewGroup;

.field protected static b:Lcom/google/googlenav/ui/android/BaseAndroidView;


# instance fields
.field protected final c:LaM/i;


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LaM/h;->c:LaM/i;

    .line 41
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    sput-object p0, LaM/h;->a:Landroid/view/ViewGroup;

    .line 36
    sput-object p1, LaM/h;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    .line 37
    return-void
.end method
