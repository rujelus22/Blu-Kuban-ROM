.class public Lcom/samsung/map/bmessage/BMessageProperty;
.super Ljava/lang/Object;
.source "BMessageProperty.java"


# instance fields
.field public Folder:Ljava/lang/String;

.field public ReadStatus:I

.field public Type:I

.field public Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "VERSION:1.0 \r\n"

    iput-object v0, p0, Lcom/samsung/map/bmessage/BMessageProperty;->Version:Ljava/lang/String;

    return-void
.end method
