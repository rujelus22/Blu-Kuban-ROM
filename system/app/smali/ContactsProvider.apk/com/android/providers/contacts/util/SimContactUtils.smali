.class public Lcom/android/providers/contacts/util/SimContactUtils;
.super Ljava/lang/Object;
.source "SimContactUtils.java"


# static fields
.field private static sSimContactUtils:Lcom/android/providers/contacts/util/SimContactUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/util/SimContactUtils;->sSimContactUtils:Lcom/android/providers/contacts/util/SimContactUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/providers/contacts/util/SimContactUtils;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/providers/contacts/util/SimContactUtils;->sSimContactUtils:Lcom/android/providers/contacts/util/SimContactUtils;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/android/providers/contacts/util/SimContactUtils;

    invoke-direct {v0}, Lcom/android/providers/contacts/util/SimContactUtils;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/util/SimContactUtils;->sSimContactUtils:Lcom/android/providers/contacts/util/SimContactUtils;

    .line 21
    :cond_b
    sget-object v0, Lcom/android/providers/contacts/util/SimContactUtils;->sSimContactUtils:Lcom/android/providers/contacts/util/SimContactUtils;

    return-object v0
.end method


# virtual methods
.method public isSimDbSupport()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
