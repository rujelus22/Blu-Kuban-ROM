.class public Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditiveShader"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1265
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nuniform float additionalAlpha;\nvoid main() {\n  vec4 sampled = texture2D(surface, vTex);\n  gl_FragColor = vec4(uColor.rgb*sampled.a + sampled.rgb*sampled.a*(1.-uColor.a), sampled.a)*additionalAlpha;\n}\n"

    return-object v0
.end method
