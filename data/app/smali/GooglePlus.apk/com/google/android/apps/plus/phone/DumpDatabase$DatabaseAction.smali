.class final enum Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;
.super Ljava/lang/Enum;
.source "DumpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/DumpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DatabaseAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

.field public static final enum CLEAN:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

.field public static final enum DUMP:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    const-string v1, "DUMP"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->DUMP:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    .line 32
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->CLEAN:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    sget-object v1, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->DUMP:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->CLEAN:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->$VALUES:[Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;
    .registers 2
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->$VALUES:[Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    return-object v0
.end method
