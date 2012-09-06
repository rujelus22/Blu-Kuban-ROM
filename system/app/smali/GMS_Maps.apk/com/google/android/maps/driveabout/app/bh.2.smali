.class Lcom/google/android/maps/driveabout/app/bH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/j;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bE;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/bE;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bH;->a:Lcom/google/android/maps/driveabout/app/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/bE;Lcom/google/android/maps/driveabout/app/bF;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bH;-><init>(Lcom/google/android/maps/driveabout/app/bE;)V

    return-void
.end method


# virtual methods
.method public a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    if-eqz p2, :cond_8

    .line 99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->a:Lcom/google/android/maps/driveabout/app/bE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bE;->a(Lcom/google/android/maps/driveabout/app/bw;)V

    .line 101
    :cond_8
    return-void
.end method
