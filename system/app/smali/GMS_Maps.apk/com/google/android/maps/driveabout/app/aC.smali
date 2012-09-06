.class Lcom/google/android/maps/driveabout/app/ac;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ab;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ac;->a:Lcom/google/android/maps/driveabout/app/ab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 858
    invoke-static {}, Lcom/google/android/maps/driveabout/app/R;->a()V

    .line 859
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ac;->a:Lcom/google/android/maps/driveabout/app/ab;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ab;->a(Lcom/google/android/maps/driveabout/app/ab;)V

    .line 860
    return-void
.end method
