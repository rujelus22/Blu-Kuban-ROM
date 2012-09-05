.class public Lcom/arcsoft/android/camera/utils/JNI_AMCE;
.super Ljava/lang/Object;
.source "JNI_AMCE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;
    }
.end annotation


# static fields
.field protected static m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/arcsoft/android/camera/utils/JNI_AMCE$1;

    invoke-direct {v0}, Lcom/arcsoft/android/camera/utils/JNI_AMCE$1;-><init>()V

    sput-object v0, Lcom/arcsoft/android/camera/utils/JNI_AMCE;->m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static native CamEng_CancelCapture(I)I
.end method

.method public static native CamEng_CancelFocus(I)I
.end method

.method public static native CamEng_CloseRecord(I)I
.end method

.method public static native CamEng_Create(I)I
.end method

.method public static native CamEng_Destroy(I)I
.end method

.method public static native CamEng_ExtractJpegData(IIZ)[B
.end method

.method public static native CamEng_GetInformation(IILjava/lang/Object;)I
.end method

.method public static native CamEng_GetProperty(II)Ljava/lang/Object;
.end method

.method public static native CamEng_GetVersion(ILjava/lang/Object;)I
.end method

.method public static native CamEng_Lock(I)I
.end method

.method public static native CamEng_OpenRecord(ILjava/lang/Object;Ljava/lang/String;)I
.end method

.method public static native CamEng_PauseRecord(I)I
.end method

.method public static native CamEng_PowerOff(I)I
.end method

.method public static native CamEng_PowerOn(I)I
.end method

.method public static native CamEng_Resume(I)I
.end method

.method public static native CamEng_ResumeRecord(I)I
.end method

.method public static native CamEng_SaveMBitmapToFile(IILjava/lang/String;)I
.end method

.method public static native CamEng_SendCommand(IIII)I
.end method

.method public static native CamEng_SetInformation(IILjava/lang/Object;)I
.end method

.method public static native CamEng_SetMode(II)I
.end method

.method public static native CamEng_SetNotify(II)I
.end method

.method public static CamEng_SetNotifyCallback(ILcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;I)I
    .registers 4
    .parameter "hCamEng"
    .parameter "fnNotify"
    .parameter "UserData"

    .prologue
    .line 36
    sput-object p1, Lcom/arcsoft/android/camera/utils/JNI_AMCE;->m_fnNotifyCallback:Lcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;

    .line 37
    invoke-static {p0, p2}, Lcom/arcsoft/android/camera/utils/JNI_AMCE;->CamEng_SetNotify(II)I

    move-result v0

    return v0
.end method

.method public static native CamEng_SetProperty(IILjava/lang/Object;)I
.end method

.method public static native CamEng_StartCapture(I)I
.end method

.method public static native CamEng_StartFocus(I)I
.end method

.method public static native CamEng_StartPreview(I)I
.end method

.method public static native CamEng_StartRecord(ILjava/lang/String;)I
.end method

.method public static native CamEng_StopCapture(I)I
.end method

.method public static native CamEng_StopPreview(I)I
.end method

.method public static native CamEng_StopRecord(I)I
.end method

.method public static native CamEng_Suspend(I)I
.end method

.method public static native CamEng_Unlock(I)I
.end method
