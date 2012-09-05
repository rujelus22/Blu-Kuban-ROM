.class public Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;
.super Ljava/lang/Object;
.source "BMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/bmessage/BMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BodyProperty"
.end annotation


# instance fields
.field public Charset:Ljava/lang/String;

.field public Encoding:Ljava/lang/String;

.field public Language:Ljava/lang/String;

.field public Length:I

.field final synthetic this$0:Lcom/samsung/map/bmessage/BMessageContent;


# direct methods
.method public constructor <init>(Lcom/samsung/map/bmessage/BMessageContent;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->this$0:Lcom/samsung/map/bmessage/BMessageContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
