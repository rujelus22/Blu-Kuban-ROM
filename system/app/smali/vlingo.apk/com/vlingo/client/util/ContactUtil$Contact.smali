.class public Lcom/vlingo/client/util/ContactUtil$Contact;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/ContactUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "name"

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-wide p1, p0, Lcom/vlingo/client/util/ContactUtil$Contact;->id:J

    .line 321
    iput-object p3, p0, Lcom/vlingo/client/util/ContactUtil$Contact;->name:Ljava/lang/String;

    .line 322
    return-void
.end method
