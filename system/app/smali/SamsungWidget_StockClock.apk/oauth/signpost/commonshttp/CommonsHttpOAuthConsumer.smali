.class public Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
.super Loauth/signpost/AbstractOAuthConsumer;
.source "CommonsHttpOAuthConsumer.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Loauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
