.class public Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
.super Ljava/lang/Object;
.source "smlProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/database/smlProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMLSyncDBInfo_t"
.end annotation


# instance fields
.field public addListCount:I

.field public alertStatus:Ljava/lang/String;

.field public credType:I

.field public currentDeleteIndex:I

.field public deleteListCount:I

.field public freeID:I

.field public freeMem:I

.field public id:I

.field public isDeviceFull:Z

.field public isSent:Z

.field public isServerFull:Z

.field public lastAnchor:Ljava/lang/String;

.field public mapList:Lcom/syncmldstmo/base/smlLinkedList;

.field public nextAnchor:Ljava/lang/String;

.field public nextnonce:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public replaceListCount:I

.field public rxPref:Ljava/lang/String;

.field public serverFreeID:I

.field public serverFreeMem:I

.field public source:Ljava/lang/String;

.field public sync:Z

.field public syncType:I

.field public target:Ljava/lang/String;

.field public txPref:Ljava/lang/String;

.field public userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->alertStatus:Ljava/lang/String;

    return-void
.end method
