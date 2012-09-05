.class public final enum Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;
.super Ljava/lang/Enum;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmlvNoteVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

.field public static final enum VNOTE_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

.field public static final enum VNOTE_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    const-string v1, "VNOTE_V10"

    invoke-direct {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->VNOTE_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    .line 22
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    const-string v1, "VNOTE_V20"

    invoke-direct {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->VNOTE_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->VNOTE_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->VNOTE_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    return-object v0
.end method

.method public static values()[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    invoke-virtual {v0}, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    return-object v0
.end method
