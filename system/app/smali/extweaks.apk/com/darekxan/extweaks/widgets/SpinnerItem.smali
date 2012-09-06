.class public Lcom/darekxan/extweaks/widgets/SpinnerItem;
.super Ljava/lang/Object;
.source "SpinnerItem.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Element;
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SpinnerItem;->value:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SpinnerItem;->name:Ljava/lang/String;

    return-object v0
.end method
