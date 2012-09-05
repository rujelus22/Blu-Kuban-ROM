.class public Lcom/syncmldstmo/database/smlDbActivedProfileInfo;
.super Ljava/lang/Object;
.source "smlDbActivedProfileInfo.java"


# instance fields
.field public SetProfileID:[Ljava/lang/String;

.field public SetProfileName:[Ljava/lang/String;

.field public bResetCheck:I

.field public magicNumber:I

.field public nProfileIndex:I

.field public nRemoteProfileIndex:I

.field public nSessionID:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    .line 20
    return-void
.end method
