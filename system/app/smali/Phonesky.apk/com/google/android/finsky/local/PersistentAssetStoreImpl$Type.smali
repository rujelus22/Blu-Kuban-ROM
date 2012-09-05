.class final enum Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;
.super Ljava/lang/Enum;
.source "PersistentAssetStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

.field public static final enum INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

.field public static final enum TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

.field public static final enum TEXT_UNIQUE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;


# instance fields
.field public final binder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

.field public final typeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    const-string v1, "TEXT_UNIQUE"

    const-string v2, "TEXT PRIMARY KEY"

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->access$100()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT_UNIQUE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    .line 82
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->access$100()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    .line 83
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->access$200()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT_UNIQUE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;)V
    .registers 5
    .parameter
    .parameter
    .parameter "typeValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, binder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;,"Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->typeValue:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->binder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;
    .registers 2
    .parameter

    .prologue
    .line 80
    const-class v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    return-object v0
.end method
