.class public Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemType"
.end annotation


# static fields
.field public static final BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 582
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 587
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 592
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 597
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "both"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 602
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->value:Ljava/lang/String;

    .line 638
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .registers 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 605
    if-nez p0, :cond_4

    .line 625
    :cond_3
    :goto_3
    return-object v0

    .line 608
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 609
    const-string v1, "none"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 610
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    goto :goto_3

    .line 612
    :cond_13
    const-string v1, "to"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 613
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    goto :goto_3

    .line 615
    :cond_1e
    const-string v1, "from"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 616
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    goto :goto_3

    .line 618
    :cond_29
    const-string v1, "both"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 619
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    goto :goto_3

    .line 621
    :cond_34
    const-string v1, "remove"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->value:Ljava/lang/String;

    return-object v0
.end method
