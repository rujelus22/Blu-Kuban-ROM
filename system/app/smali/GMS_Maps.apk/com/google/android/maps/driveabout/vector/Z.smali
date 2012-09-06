.class public abstract Lcom/google/android/maps/driveabout/vector/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/Y;


# instance fields
.field protected a:Ljava/util/List;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->a:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Ljava/util/Set;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public d()Ljava/util/Set;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Ljava/util/Set;

    return-object v0
.end method
