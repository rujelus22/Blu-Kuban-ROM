.class public Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
.super Ljava/lang/Object;
.source "SystemStatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileNetwork"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public ready:Z

.field public slot:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
