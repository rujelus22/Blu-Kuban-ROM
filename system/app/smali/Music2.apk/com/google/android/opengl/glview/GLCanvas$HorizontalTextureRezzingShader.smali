.class Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalTextureRezzingShader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 3
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected createShaderProgram()V
    .registers 3

    .prologue
    .line 395
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uPreFadeA;\nuniform float uPreFadeB;\nfloat computeAlpha(float posx) {\n  float xalpha = posx * uPreFadeA + uPreFadeB;\n  xalpha = clamp(xalpha, 0.0, 1.0);\n  xalpha = xalpha * (floor(xalpha) + 1.0) * 0.5;\n  return xalpha;\n}\nvoid main() {\n  float alpha = computeAlpha(gl_FragCoord.x);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  gl_FragColor = col*alpha;\n}\n"

    #calls: Lcom/google/android/opengl/glview/GLCanvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;->mProgram:I

    .line 399
    return-void
.end method
