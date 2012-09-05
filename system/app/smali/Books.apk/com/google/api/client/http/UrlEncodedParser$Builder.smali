.class public Lcom/google/api/client/http/UrlEncodedParser$Builder;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/UrlEncodedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser$Builder;->contentType:Ljava/lang/String;

    .line 271
    return-void
.end method
