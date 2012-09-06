.class public Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
.super Ljava/lang/Object;
.source "PackageStateRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/PackageStateRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageState"
.end annotation


# instance fields
.field public final certificateHashes:[Ljava/lang/String;

.field public final installedVersion:I

.field public final isActiveDeviceAdmin:Z

.field public final isDisabled:Z

.field public final isDisabledByUser:Z

.field public final isSystemApp:Z

.field public final isUpdatedSystemApp:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;ZZZZIZ)V
    .registers 9
    .parameter "packageName"
    .parameter "certificateHashes"
    .parameter "isSystemApp"
    .parameter "isUpdatedSystemApp"
    .parameter "isDisabled"
    .parameter "isDisabledByUser"
    .parameter "installedVersion"
    .parameter "isActiveDeviceAdmin"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    .line 40
    iput-boolean p4, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    .line 41
    iput-boolean p5, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    .line 42
    iput-boolean p6, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    .line 43
    iput p7, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 44
    iput-boolean p8, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_5

    .line 85
    :cond_4
    :goto_4
    return v1

    .line 53
    :cond_5
    instance-of v3, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v3, :cond_b

    move v1, v2

    .line 54
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 59
    .local v0, that:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    iget v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iget v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 60
    goto :goto_4

    .line 62
    :cond_16
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 63
    goto :goto_4

    .line 65
    :cond_1e
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    .line 66
    goto :goto_4

    .line 68
    :cond_26
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eq v3, v4, :cond_2e

    move v1, v2

    .line 69
    goto :goto_4

    .line 71
    :cond_2e
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eq v3, v4, :cond_36

    move v1, v2

    .line 72
    goto :goto_4

    .line 74
    :cond_36
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    if-eq v3, v4, :cond_3e

    move v1, v2

    .line 75
    goto :goto_4

    .line 77
    :cond_3e
    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    move v1, v2

    .line 78
    goto :goto_4

    .line 80
    :cond_4a
    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_58
    move v1, v2

    .line 82
    goto :goto_4

    .line 80
    :cond_5a
    iget-object v3, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_58
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 92
    .local v0, result:I
    :goto_c
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_18
    add-int v0, v4, v2

    .line 94
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    add-int v0, v2, v4

    .line 95
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v2, :cond_51

    move v2, v3

    :goto_27
    add-int v0, v4, v2

    .line 96
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    if-eqz v2, :cond_53

    move v2, v3

    :goto_30
    add-int v0, v4, v2

    .line 97
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eqz v2, :cond_55

    move v2, v3

    :goto_39
    add-int v0, v4, v2

    .line 98
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eqz v2, :cond_57

    move v2, v3

    :goto_42
    add-int v0, v4, v2

    .line 99
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    if-eqz v4, :cond_59

    :goto_4a
    add-int v0, v2, v3

    .line 100
    return v0

    .end local v0           #result:I
    :cond_4d
    move v0, v1

    .line 91
    goto :goto_c

    .restart local v0       #result:I
    :cond_4f
    move v2, v1

    .line 92
    goto :goto_18

    :cond_51
    move v2, v1

    .line 95
    goto :goto_27

    :cond_53
    move v2, v1

    .line 96
    goto :goto_30

    :cond_55
    move v2, v1

    .line 97
    goto :goto_39

    :cond_57
    move v2, v1

    .line 98
    goto :goto_42

    :cond_59
    move v3, v1

    .line 99
    goto :goto_4a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 105
    const-string v0, "(packageName=%s,installedVersion=%d,isSystemApp=%s,certificateHashes=%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
