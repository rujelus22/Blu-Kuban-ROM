.class final Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;
.super Ljava/lang/Number;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final encodedValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .registers 3

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final floatValue()F
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final intValue()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final longValue()J
    .registers 3

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    return-object v0
.end method
