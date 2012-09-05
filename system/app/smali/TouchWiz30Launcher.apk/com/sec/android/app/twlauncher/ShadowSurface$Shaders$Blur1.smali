.class Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "ShadowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Blur1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;->this$0:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nfloat sample(float u, float v) {\n       return texture2D(surface, vec2(u,v)).a*step(0.,v)*step(v,1.);\n}\nvoid main() {\n  float j = 1./64.;\n  float u = mix(-j*3., 1.+j*3., vTex.x);\n  float v = mix(-j*3., 1.+j*3., vTex.y);\n  float a = (\n            sample(u,v-3.*j)*.006+\n            sample(u,v-2.*j)*.061+\n            sample(u,v-1.*j)*.242+\n            sample(u,v+0.*j)*.363+\n            sample(u,v+1.*j)*.242+\n            sample(u,v+2.*j)*.061+\n            sample(u,v+3.*j)*.006+\n      0.)*step(0.,u)*step(u,1.);\n  gl_FragColor.a = a*uColor.a;\n  gl_FragColor.rgb = vec3(0.,0.,0.);\n}\n"

    return-object v0
.end method
