.class public Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;
.super Ljava/lang/Object;
.source "JniHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mapping"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->value:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->name:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->value:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 52
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mapping cannot have null names/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_17
    return-void
.end method
