.class public final Lcom/google/android/music/utils/NameValuePairImpl;
.super Ljava/lang/Object;
.source "NameValuePairImpl.java"

# interfaces
.implements Lorg/apache/http/NameValuePair;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/music/utils/NameValuePairImpl;->mName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/google/android/music/utils/NameValuePairImpl;->mValue:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/music/utils/NameValuePairImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/utils/NameValuePairImpl;->mValue:Ljava/lang/String;

    return-object v0
.end method
