.class public final Lnh$a;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lgg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lez;I)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 222
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 223
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method
