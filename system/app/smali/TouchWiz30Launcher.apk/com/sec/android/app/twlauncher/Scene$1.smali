.class Lcom/sec/android/app/twlauncher/Scene$1;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Scene;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Scene;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Scene$1;->this$0:Lcom/sec/android/app/twlauncher/Scene;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nvarying vec2 vHighlightTex;\nuniform sampler2D surface;\nuniform sampler2D highlightSurface;\nuniform vec4 uColor;\nvoid main() {\n  vec4 sampled = texture2D(surface, vTex);\n  vec4 highlight = texture2D(highlightSurface, vHighlightTex);\n  float highlightMask = step(4./255., sampled.r); \n  gl_FragColor = (sampled + highlight*highlightMask)*uColor;\n}\n"

    return-object v0
.end method

.method protected getVertexSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    const-string v0, "uniform mat4 uTransform;\nuniform mat4 uProjection;\nuniform vec4 uRect;\nuniform vec4 uTexRect;\nuniform vec2 highlightXMA;\nattribute vec3 aGeometry;\nvarying vec2 vTex;\nvarying vec2 vHighlightTex;\nvoid main() {\n  vTex= aGeometry.xy*(uTexRect.zw-uTexRect.xy)+uTexRect.xy;\n  vec2 rectSpace = aGeometry.xy*(uRect.zw-uRect.xy)+uRect.xy;\n  vec4 transformed = uTransform*vec4(rectSpace, aGeometry.z, 1.);\n  gl_Position = uProjection * transformed;\n  vHighlightTex.x = (gl_Position.x/gl_Position.w)*highlightXMA[0]+highlightXMA[1];\n  vHighlightTex.y = vTex.y;\n}\n"

    return-object v0
.end method
