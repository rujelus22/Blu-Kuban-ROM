.class public final enum Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;
.super Ljava/lang/Enum;
.source "PrintingStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/PrintingStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumPrintingStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_CANCELED:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_COMPLETED_FILE_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_COMPLETED_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_COMPLETED_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_END_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_END_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_PREPARE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_PRINTING:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_START_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_START_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_START_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

.field public static final enum PRINTING_STATUSTYPE_START_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_PREPARE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_PREPARE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 15
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_START_JOB"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 16
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_START_PAGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 17
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_PRINTING"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_PRINTING:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 18
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_COMPLETED_PAGE"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 19
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_COMPLETED_JOB"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 20
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_CANCELED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_CANCELED:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 21
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 23
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_START_MAKE_FILE_DATA"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 24
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_END_MAKE_FILE_DATA"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 25
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_START_SEND_FILE_DATA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 26
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_END_SEND_FILE_DATA"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 27
    new-instance v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const-string v1, "PRINTING_STATUSTYPE_COMPLETED_FILE_JOB"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_FILE_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_PREPARE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_PRINTING:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_PAGE:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_CANCELED:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_FILE_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->$VALUES:[Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->mValue:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;
    .registers 2
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    return-object v0
.end method

.method public static values()[Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->$VALUES:[Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    invoke-virtual {v0}, [Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->mValue:I

    return v0
.end method
