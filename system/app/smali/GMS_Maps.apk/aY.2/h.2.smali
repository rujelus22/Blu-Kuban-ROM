.class public abstract LaY/h;
.super Ljava/lang/Object;

# interfaces
.implements LaY/r;


# static fields
.field protected static a:Landroid/view/ViewGroup;

.field protected static b:Lcom/google/googlenav/ui/android/BaseAndroidView;


# instance fields
.field protected final c:LaY/i;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/h;->c:LaY/i;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .registers 2

    sput-object p0, LaY/h;->a:Landroid/view/ViewGroup;

    sput-object p1, LaY/h;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-void
.end method
