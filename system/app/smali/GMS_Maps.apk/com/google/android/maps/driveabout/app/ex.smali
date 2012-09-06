.class final Lcom/google/android/maps/driveabout/app/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eD;


# instance fields
.field private final a:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ex;->a:Landroid/media/ToneGenerator;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ex;->a:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 216
    return-void
.end method
