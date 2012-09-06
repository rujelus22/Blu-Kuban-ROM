.class Lcom/google/android/maps/driveabout/app/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ds;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dv;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/ds;Lcom/google/android/maps/driveabout/app/dt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dv;-><init>(Lcom/google/android/maps/driveabout/app/ds;)V

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 283
    :goto_3
    return-void

    .line 281
    :cond_4
    if-nez p3, :cond_f

    const/4 v0, 0x1

    .line 282
    :goto_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dv;->a:Lcom/google/android/maps/driveabout/app/ds;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(Lcom/google/android/maps/driveabout/app/ds;IILjava/lang/Object;)V

    goto :goto_3

    .line 281
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method
