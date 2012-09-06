.class public Lcom/google/android/maps/driveabout/app/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cd;->a:Landroid/content/Context;

    .line 176
    return-void
.end method


# virtual methods
.method public a(Lag/a;Lag/g;)Lag/d;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/maps/driveabout/app/cb;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cd;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/maps/driveabout/app/ce;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ce;-><init>(Lcom/google/android/maps/driveabout/app/cd;Lag/a;Lag/g;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cb;-><init>(Landroid/content/Context;Lag/g;Lcom/google/android/maps/driveabout/app/cc;)V

    return-object v0
.end method
