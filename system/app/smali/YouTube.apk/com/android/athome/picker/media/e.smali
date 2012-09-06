.class public final Lcom/android/athome/picker/media/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/android/athome/picker/media/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 80
    new-instance v0, Lcom/android/athome/picker/media/h;

    invoke-direct {v0}, Lcom/android/athome/picker/media/h;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/e;->a:Lcom/android/athome/picker/media/g;

    .line 84
    :goto_d
    return-void

    .line 82
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/f;

    invoke-direct {v0}, Lcom/android/athome/picker/media/f;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/e;->a:Lcom/android/athome/picker/media/g;

    goto :goto_d
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/android/athome/picker/media/e;->a:Lcom/android/athome/picker/media/g;

    const v1, 0x800001

    invoke-interface {v0, p0, v1}, Lcom/android/athome/picker/media/g;->a(Landroid/view/View;I)V

    .line 100
    return-void
.end method
