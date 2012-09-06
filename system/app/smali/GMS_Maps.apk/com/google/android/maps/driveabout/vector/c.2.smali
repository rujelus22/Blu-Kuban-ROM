.class public abstract Lcom/google/android/maps/driveabout/vector/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/F;


# instance fields
.field protected volatile a:Lcom/google/android/maps/driveabout/vector/l;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/c;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 22
    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/c;->a:Lcom/google/android/maps/driveabout/vector/l;

    return-object v0
.end method
